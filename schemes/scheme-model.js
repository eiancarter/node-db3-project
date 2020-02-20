const db = require("../data/dbConfig");

module.exports={
    find,
    findById,
    findSteps,
    add,
    update,
    remove
};

function find() {
    return db("schemes")
}

function findById(id) {
    return db("schemes")
}

function findSteps() {
    return db("steps")
}

function add(scheme) {
    return db("schemes")
    .insert(scheme, "id")
    .then(([id]) => get(id)); 
}

function update(id, changes) {
    return db("schemes")
    .where("id", id)
    .update(changes)
    .then(count => (count > 0 ? get(id) : null))
}

function remove(id) {
    return db("schemes")
    .where("id", id)
    .del()
}