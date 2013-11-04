User.create({ first_name: "marion", last_name: "knight", email: "knight@gmail.com", password_hash: "supersecret" });
Note.create({ user_id: 1, content: "very first note" });