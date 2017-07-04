.class Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1002(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/common/EmojiList;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "%"

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1100()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1200(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)I

    move-result v8

    if-ne v7, v8, :cond_1

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/common/EmojiList;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "%"

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1100()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a021c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1002(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z

    :cond_2
    :goto_0
    invoke-interface/range {p4 .. p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_3
    :goto_1
    return-object v5

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$600()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f0a0268

    :goto_2
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1200(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v7, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const v7, 0x7f0a04a1

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0250

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1200(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    sub-int v7, p3, p2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1200(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1200(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int p3, p2, v7

    :cond_8
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_CHANNEL_CHAR:[Ljava/lang/String;

    array-length v3, v7

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_e

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_CHANNEL_CHAR:[Ljava/lang/String;

    aget-object v7, v7, v0

    :goto_6
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    const/4 v2, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    sget-object v7, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_EVENT_CHAR:[Ljava/lang/String;

    array-length v3, v7

    goto :goto_3

    :cond_b
    sget-object v7, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_CHAR:[Ljava/lang/String;

    array-length v3, v7

    goto :goto_3

    :cond_c
    sget-object v7, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_EVENT_CHAR:[Ljava/lang/String;

    aget-object v7, v7, v0

    goto :goto_6

    :cond_d
    sget-object v7, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_CHAR:[Ljava/lang/String;

    aget-object v7, v7, v0

    goto :goto_6

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    if-eqz v2, :cond_11

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a021c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1002(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z

    :cond_10
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {p4 .. p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_1

    :cond_11
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$900(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100111

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_1
.end method
