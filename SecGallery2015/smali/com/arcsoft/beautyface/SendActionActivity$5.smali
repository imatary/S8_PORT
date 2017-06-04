.class Lcom/arcsoft/beautyface/SendActionActivity$5;
.super Ljava/lang/Object;
.source "SendActionActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/beautyface/SendActionActivity;->initUI()V
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

    iput-object p1, p0, Lcom/arcsoft/beautyface/SendActionActivity$5;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$5;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    # getter for: Lcom/arcsoft/beautyface/SendActionActivity;->mBitmapInput:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$1200(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$5;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    const/4 v1, 0x1

    # setter for: Lcom/arcsoft/beautyface/SendActionActivity;->mIsInputBitmap:Z
    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$1302(Lcom/arcsoft/beautyface/SendActionActivity;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$5;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    # getter for: Lcom/arcsoft/beautyface/SendActionActivity;->mArrayInput:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$1400(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$5;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    const/4 v1, 0x0

    # setter for: Lcom/arcsoft/beautyface/SendActionActivity;->mIsInputBitmap:Z
    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$1302(Lcom/arcsoft/beautyface/SendActionActivity;Z)Z

    goto :goto_0
.end method
