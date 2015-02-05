/// scrControllerStepEvent()

scrSavePreviousInput()
scrClearInput()
scrProcessInput()

if connected
{
    if scrInputHasChanged()
    {
        show_debug_message("Input has changed")
        scrSendInputToServer()
    }
}

broadcast_alarm--
if broadcast_alarm < 0
{
    scrSendClientBroadcast()
    broadcast_alarm = room_speed * 60
}
