-- CreateTable
CREATE TABLE "PEDIDO" (
    "id_pedido" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "dt_pedido" DATETIME NOT NULL,
    "status" TEXT NOT NULL,
    "id_cliente" INTEGER NOT NULL,
    "id_vendedor" INTEGER NOT NULL,
    "vl_total" DECIMAL NOT NULL,
    CONSTRAINT "PEDIDO_status_fkey" FOREIGN KEY ("status") REFERENCES "PEDIDO_STATUS" ("status") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "PEDIDO_id_cliente_fkey" FOREIGN KEY ("id_cliente") REFERENCES "CLIENTE" ("id_cliente") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "PEDIDO_id_vendedor_fkey" FOREIGN KEY ("id_vendedor") REFERENCES "VENDEDOR" ("id_vendedor") ON DELETE RESTRICT ON UPDATE CASCADE
);
