package parse.base

import grammar.model.Symbol

fun <T> iff(condition: Boolean, producer: () -> T): T? {
    return if (condition) producer() else null
}

sealed class ParseError(message: String) : Exception(message)
class RuleNotFound(topSymbol: Symbol.NonTerminal, supposedTerminal: Symbol.Terminal) :
    ParseError("Rule are not found for ${topSymbol to supposedTerminal}")

class StackNotEmpty : ParseError("Stack is not empty")

class UnexpectedTerminal(topSymbol: Symbol.Terminal) : ParseError("Unexpected terminal: $topSymbol")

class NotTheWholeStringProcessed(rest: List<String>) : ParseError("Rest string is not empty: ${rest.joinToString()}")

class NonLL1Grammar : ParseError("Grammar is not LL(1)")
