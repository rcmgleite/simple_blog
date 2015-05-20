##
# userSchema for mongoose
##
mongoose   = require 'mongoose'
Schema     = mongoose.Schema

userSchema = new Schema
  name:     String
  cpf:      String
  username: String
  password: String

module.exports = mongoose.model 'User', userSchema
