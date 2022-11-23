package model;

public class Pedido {
    private int idVenda;
    private Produto produto;

    public Pedido(int idVenda, Produto produto) {
        this.idVenda = idVenda;
        this.produto = produto;
    }
    public Pedido(int idVenda) {
        this.idVenda = idVenda;
    }

    public int getIdVenda() {
        return idVenda;
    }

    public void setIdVenda(int idVenda) {
        this.idVenda = idVenda;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }
}
