.class Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "InputText.java"


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

.field final synthetic val$maxInputLength:I

.field final synthetic val$toastobject:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/InputText;IILandroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$maxInputLength:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v5, "[\\*//*\\\\\\?:<>\\|\"]+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$maxInputLength:I

    if-lt v5, v6, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const-string v5, ""

    :goto_0
    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$maxInputLength:I

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$maxInputLength:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v3, v5, v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v5, v3, :cond_3

    const/4 v5, 0x0

    invoke-interface {p1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {p4, v8, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    invoke-interface {p4, p6, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    move-object v5, v2

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    move v0, p2

    :goto_2
    if-ge v0, p3, :cond_9

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v4

    const/16 v5, 0x13

    if-eq v4, v5, :cond_6

    const/16 v5, 0x1c

    if-ne v4, v5, :cond_8

    :cond_6
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_7
    const-string v5, ""

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {p4, v8, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    invoke-interface {p4, p6, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->setSelection(I)V

    :cond_a
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;->val$toastobject:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_b
    move-object v5, v2

    goto/16 :goto_0
.end method
