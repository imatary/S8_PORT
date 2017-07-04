.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;
.super Ljava/lang/Object;
.source "EditTextController.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 14

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Landroid/widget/Toast;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a021c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    const-string/jumbo v9, "[\\*/\\\\\\?:<>\\|\"]+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/common/EmojiList;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    invoke-interface/range {p4 .. p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_2
    sub-int v10, p3, p2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x40

    :goto_1
    mul-int/lit8 v9, v9, 0x2

    if-le v10, v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x40

    :goto_2
    mul-int/lit8 v9, v9, 0x2

    add-int p3, p2, v9

    :cond_3
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$300()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_9

    aget-object v3, v10, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_8

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    const/4 v4, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v2, v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    const/16 v9, 0x32

    goto :goto_1

    :cond_6
    const/16 v9, 0x32

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v12, 0x21

    if-lt v0, v12, :cond_4

    const/16 v12, 0x7e

    if-ge v0, v12, :cond_4

    const/16 v12, 0x3f

    if-eq v0, v12, :cond_4

    const v12, 0xfee0

    add-int/2addr v12, v0

    int-to-char v0, v12

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
