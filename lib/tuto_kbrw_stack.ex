defmodule Test.Tuto_kbrw_stack do
  use Application

  @impl true
  def start(_type, _args) do
    sup = {_ok,pid} = Serv_supervisor.start_link([])
    [{_, reg, _, _}] = Supervisor.which_children(pid)
    IO.inspect(__MODULE__)
    path = Path.join(File.cwd!,"resources/chap1/orders_dump/orders_chunk0.json")
    JsonLoader.load_to_database(reg,path)
    {:ok, _orders} = Database.search(reg,[{"id", "nat_order000147796"},{"id", "nat_order000147741"},{"id", "42"}])
    #IO.inspect(orders)
<<<<<<< Updated upstream
=======
    #IO.inspect(orders)
    #IO.inspect(orders)
    #IO.inspect(orders)
    IO.puts("gotta go to master")
>>>>>>> Stashed changes

    sup
  end

end
