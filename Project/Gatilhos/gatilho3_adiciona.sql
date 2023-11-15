PRAGMA foreign_keys = ON;
create trigger gatilho3
before insert on Promoção
when New.DataInício<Date() and New.DataFim <Date()
begin
 SELECT raise(ignore);
end;