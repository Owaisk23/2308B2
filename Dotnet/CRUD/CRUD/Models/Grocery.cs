using System;
using System.Collections.Generic;

namespace CRUD.Models;

public partial class Grocery
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Desc { get; set; } = null!;

    public int Price { get; set; }
}
