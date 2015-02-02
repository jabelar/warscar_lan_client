scrProcessInput()

if connected
{
    scrSendInputToServer()
}

broadcast_alarm--
if broadcast_alarm < 0
{
    scrSendClientBroadcast()
    broadcast_alarm = room_speed * 60
}
