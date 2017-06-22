.class Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;
.super Ljava/lang/Object;
.source "InputFileName.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isContain:Z

.field private mBeforeCusorPos:I

.field private mBeforeString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->isContain:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeString:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeCusorPos:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/16 v4, 0x32

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    invoke-virtual {v1, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->isContain:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeCusorPos:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->setSelection(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070063

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;I)V

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeCusorPos:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->setSelection(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070053

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;

    invoke-virtual {v1, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->isContain:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeString:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    add-int v1, p2, p3

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->mBeforeCusorPos:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;->isContain:Z

    goto :goto_0
.end method
