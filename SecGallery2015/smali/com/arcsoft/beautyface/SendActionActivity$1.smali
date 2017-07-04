.class Lcom/arcsoft/beautyface/SendActionActivity$1;
.super Ljava/lang/Object;
.source "SendActionActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/beautyface/SendActionActivity;->initSendActionUI()V
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

    iput-object p1, p0, Lcom/arcsoft/beautyface/SendActionActivity$1;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$1;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$000(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$1;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$102(Lcom/arcsoft/beautyface/SendActionActivity;I)I

    const-string/jumbo v0, "ArcSoft_App_SendActionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mModeOnFace mBeautyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity$1;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v2}, Lcom/arcsoft/beautyface/SendActionActivity;->access$100(Lcom/arcsoft/beautyface/SendActionActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/ArcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$1;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$200(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$1;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$102(Lcom/arcsoft/beautyface/SendActionActivity;I)I

    const-string/jumbo v0, "ArcSoft_App_SendActionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mModeOnSKin mBeautyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity$1;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v2}, Lcom/arcsoft/beautyface/SendActionActivity;->access$100(Lcom/arcsoft/beautyface/SendActionActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/ArcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
