-- Write a SQL script that creates a trigger that decreases the quantity of an item after adding a new order.
-- Quantity in the table items can be negative.
-- Context: Updating multiple tables for one action from your application can generate issue: network disconnection,
-- server crash, etc. To avoid this, you can use triggers to update multiple tables in one action.  
---For example when  a new order is added, you can decrease the quantity of the item in the table items.
CREATE TRIGGER decrease_quantity AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name = name.item;
