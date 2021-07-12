#include "state.h"
#include "../stateMachine.h"

State::State(stateMachine* sm):
_sm(sm)
{};
// Need empty virtual destructor to make compiler happy
State::~State(){

};