.class Lcom/arcsoft/beautyface/SendActionActivity$3;
.super Ljava/lang/Object;
.source "SendActionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/beautyface/SendActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/beautyface/SendActionActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/beautyface/SendActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/beautyface/SendActionActivity$3;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/arcsoft/beautyface/ArcUtils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$3;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    # getter for: Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromGallery:Lcom/arcsoft/beautyface/GetResultFromGallery;
    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$400(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/GetResultFromGallery;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$3;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    # getter for: Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromGallery:Lcom/arcsoft/beautyface/GetResultFromGallery;
    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$400(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/GetResultFromGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity$3;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/GetResultFromGallery;->goPickContent(Landroid/content/Context;)V

    goto :goto_0
.end method
