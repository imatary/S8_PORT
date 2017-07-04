.class Lcom/arcsoft/beautyface/SendActionActivity$4;
.super Ljava/lang/Object;
.source "SendActionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$500(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$500(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$500(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$500(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    iget-object v0, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$600(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    new-instance v1, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v2}, Lcom/arcsoft/beautyface/SendActionActivity;->access$100(Lcom/arcsoft/beautyface/SendActionActivity;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;-><init>(I)V

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$602(Lcom/arcsoft/beautyface/SendActionActivity;Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;)Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$700(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$600(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->init(Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;)I

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$700(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$800(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->getProperty(Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I

    const-string/jumbo v0, "ArcSoft_App_SendActionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProperty mProperty feature value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v2}, Lcom/arcsoft/beautyface/SendActionActivity;->access$800(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    move-result-object v2

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSkinSoftenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v2}, Lcom/arcsoft/beautyface/SendActionActivity;->access$800(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    move-result-object v2

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSkinBrightLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v2}, Lcom/arcsoft/beautyface/SendActionActivity;->access$800(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    move-result-object v2

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSlenderFaceLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v2}, Lcom/arcsoft/beautyface/SendActionActivity;->access$800(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    move-result-object v2

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iEyeEnlargementLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v2}, Lcom/arcsoft/beautyface/SendActionActivity;->access$800(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    move-result-object v2

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iFeatureNeeded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/ArcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v0}, Lcom/arcsoft/beautyface/SendActionActivity;->access$900(Lcom/arcsoft/beautyface/SendActionActivity;)V

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity$4;->this$0:Lcom/arcsoft/beautyface/SendActionActivity;

    invoke-static {v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$1000(Lcom/arcsoft/beautyface/SendActionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->access$1100(Lcom/arcsoft/beautyface/SendActionActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
