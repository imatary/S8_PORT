.class Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field final synthetic val$isFileSize:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->val$isFileSize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mProgressPercentAsCount:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$100(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$200(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$300(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCountText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$300(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$200(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    div-int/2addr v3, v4

    # setter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$502(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;I)I

    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setPercentText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$600(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setProcessing(I)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$700(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;I)V

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$300(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$200(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCountText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setPercentText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$600(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->val$isFileSize:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setPercentText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$600(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V

    :goto_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setProcessing(I)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$700(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;I)V

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setPercentText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$600(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$200(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$300(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCountText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$300(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$200(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCountText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
