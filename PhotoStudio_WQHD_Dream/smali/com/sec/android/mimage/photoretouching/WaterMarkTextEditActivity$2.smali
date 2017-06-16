.class Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity$2;
.super Ljava/lang/Object;
.source "WaterMarkTextEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;->mRemainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;->access$100(Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;->NewString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;->access$002(Lcom/sec/android/mimage/photoretouching/WaterMarkTextEditActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
