.class Lcom/sec/android/mimage/photoretouching/Decoration/InputText$2;
.super Ljava/lang/Object;
.source "InputText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/InputText;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mPositivieButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/InputText;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mPositivieButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/InputText;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mPositivieButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/InputText;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
