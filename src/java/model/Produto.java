package model;

public class Produto {
    private int idProduto;
    private String nomeProduto;
    private double vlrVenda;
    private long codigoBarra;
    private String obsProduto;

    public Produto(int idProduto, String nomeProduto, double vlrVenda, long codigoBarra, String obsProduto) {
        this.idProduto = idProduto;
        this.nomeProduto = nomeProduto;
        this.vlrVenda = vlrVenda;
        this.codigoBarra = codigoBarra;
        this.obsProduto = obsProduto;
    }
    
    public Produto(int idProduto, String nomeProduto, double vlrVenda, String obsProduto) {
        this.idProduto = idProduto;
        this.nomeProduto = nomeProduto;
        this.vlrVenda = vlrVenda;
        this.obsProduto = obsProduto;
    }

    public Produto(int idProduto) {
        this.idProduto = idProduto;
    }

    public Produto() {}
  
    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public double getVlrVenda() {
        return vlrVenda;
    }

    public void setVlrVenda(double vlrVenda) {
        this.vlrVenda = vlrVenda;
    }

    public long getCodigoBarra() {
        return codigoBarra;
    }

    public void setCodigoBarra(int codigoBarra) {
        this.codigoBarra = codigoBarra;
    }

    public String getObsProduto() {
        return obsProduto;
    }

    public void setObsProduto(String obsProduto) {
        this.obsProduto = obsProduto;
    }
}
