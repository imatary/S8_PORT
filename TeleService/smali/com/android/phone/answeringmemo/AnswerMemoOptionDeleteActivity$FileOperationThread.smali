.class Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;
.super Ljava/lang/Thread;
.source "AnswerMemoOptionDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileOperationThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deleteFiles()V
    .locals 4

    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v3, "deleteFiles : Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v3, "DeleteFiles : is failed. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-wrap2(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->deletefilesSet(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v3, "deleteFiles : is success "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-wrap2(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->deleteFiles()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "deleteFiles : Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
