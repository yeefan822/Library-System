MACHINE LS
SETS
BOOK; STUDENT; STATUS = {instock, borrowed,reserved}; CATEGORIES = {fiction, horror, commics, fantasy, novel, general};AUTHOR; GRADE = {normal, VIP}
VARIABLES books, students, borrow, b_status, b_category,categories, authors, publish, s_grade
INVARIANT
 books : POW(BOOK)  & students : POW(STUDENT) & borrow : STUDENT <-> BOOK & b_status : BOOK --> STATUS & b_category : BOOK --> CATEGORIES & dom(borrow) <: students & ran(borrow) <: books & 
 categories : POW(CATEGORIES) & authors : POW(AUTHOR) & publish : AUTHOR <->BOOK & dom(publish) <: authors & ran(publish) <: BOOK & s_grade : STUDENT --> GRADE
INITIALISATION  books := {}; students := {};  borrow := {}; b_status := BOOK *{instock}; b_category := BOOK *{general}; categories := {fiction, horror, commics, fantasy, novel,general};authors := {}; publish :={}; s_grade := STUDENT*{normal}
OPERATIONS
  addbook(bk) = PRE bk:BOOK & bk /: books THEN books := books \/ {bk} END;
  removebook(bk) = PRE bk : books & borrow |> {bk} ={} &b_status(bk) /= reserved THEN books := books - {bk} END;
  registerauthor(ah) = PRE ah : AUTHOR & ah /: authors THEN authors := authors \/ {ah} END;
  publishbook(ah,bk) = PRE ah : authors & bk /: books & bk:BOOK THEN books := books \/ {bk} ; publish := publish \/ {ah |-> bk} END;
  signupstudent(sd) = PRE sd:STUDENT & sd /: students THEN students := students \/ {sd} END;
  upgradestudent(sd) = PRE sd : students & s_grade(sd) = normal THEN s_grade(sd) :=VIP END;
  deletestudent(sd) = PRE sd : students & {sd} <| borrow = {} THEN students := students - {sd} END;
  borrowbook(sd,bk) = PRE sd : students & bk : books & (b_status(bk) = instock or (b_status(bk) = reserved & s_grade(sd) = VIP)) &(b_category(bk) /= horror or (b_category(bk) = horror & s_grade(sd)=VIP)) THEN 
		borrow := borrow \/ {sd |-> bk};b_status(bk) := borrowed END;
  returnbook(sd,bk) = PRE sd : students & bk : books & sd |-> bk : borrow THEN
		borrow := borrow - {sd |-> bk};b_status(bk) := instock END;
  updatebookcategory(bk,ca) = PRE bk:BOOK  & bk : books & b_status(bk) = instock & ca /= b_category(bk) &ca: CATEGORIES & ca : categories THEN b_category(bk) := ca END;
  reservebook(sd,bk) = PRE sd : students & bk : books & b_status(bk) = instock & s_grade(sd) = VIP THEN
		b_status(bk) := reserved END  

END