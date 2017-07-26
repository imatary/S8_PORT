.class Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditRejectCallWithMsgScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    const v8, 0x7f0d0640

    const/16 v7, 0xa0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    rsub-int v0, v1, 0xa0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->showErrorText(Z)V

    :cond_0
    if-gtz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v7, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->showErrorText(Z)V

    :goto_0
    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->showErrorText(Z)V

    goto :goto_0

    :cond_2
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v7, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->showErrorText(Z)V

    :goto_1
    const/4 v1, 0x0

    return-object v1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->showErrorText(Z)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->showErrorText(Z)V

    :goto_2
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->showErrorText(Z)V

    goto :goto_2
.end method

.method public showErrorText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
