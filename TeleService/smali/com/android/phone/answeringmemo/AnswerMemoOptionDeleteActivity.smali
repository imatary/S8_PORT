.class public Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;
.super Landroid/app/Activity;
.source "AnswerMemoOptionDeleteActivity.java"

# interfaces
.implements Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$1;,
        Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;,
        Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;,
        Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;
    }
.end annotation


# static fields
.field private static mMaxDeleteItemsCount:I

.field private static mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mBackgroundQueryHandler:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;

.field private mCheckedIdArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeletePopup:Landroid/app/AlertDialog;

.field private mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

.field private mListChange:Z

.field private mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLocale:Ljava/lang/String;

.field private mOk:Landroid/view/MenuItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private mSelectAllCheck:Landroid/view/View;

.field private mSelectAllTxt:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get3()Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;
    .locals 1

    sget-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListChange:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->closeProgressDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->deleteFile()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->deleteFromDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->selectAll()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    const/16 v0, 0x64

    sput v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mMaxDeleteItemsCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListChange:Z

    iput-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mLocale:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$1;-><init>(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;-><init>(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized closeProgressDialog()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createDeleteDialog()Landroid/app/AlertDialog;
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0d33

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0d2b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0d3c

    invoke-virtual {p0, v4}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d08ce

    invoke-virtual {p0, v4}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0d34

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private deleteFile()V
    .locals 4

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "deleteFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteFile(). checkedIdList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    sget-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->start()V

    :cond_0
    return-void
.end method

.method private static deleteFromDB(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const-string/jumbo v5, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v6, "delete all selected files and start delete from DB"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ", "

    const-string/jumbo v7, " or _id="

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "["

    const-string/jumbo v7, "_id="

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "]"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AnswerMemoOptionDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remainIds.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", where : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ", "

    const-string/jumbo v7, " or _id="

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "["

    const-string/jumbo v7, "_id="

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "]"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AnswerMemoOptionDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "where : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "AnswerMemoOptionDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deletedRows = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public static deletefilesSet(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v4, 0x0

    :goto_0
    sget v14, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mMaxDeleteItemsCount:I

    if-ge v4, v14, :cond_1

    if-ge v4, v9, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v5

    const-string/jumbo v14, "AnswerMemoOptionDeleteActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "isFileDeleted == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    const-string/jumbo v14, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v15, "deletedIDs is"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ", "

    const-string/jumbo v16, " or _id="

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "["

    const-string/jumbo v16, "_id="

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "]"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "AnswerMemoOptionDeleteActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "where : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v14, "AnswerMemoOptionDeleteActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "deletedRows = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v2

    :cond_2
    const-string/jumbo v14, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v15, "deletedIDs is nothing"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "_id="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "memo_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private initView()V
    .locals 6

    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;-><init>(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mBackgroundQueryHandler:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;

    new-instance v2, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v2, p0, v4, v3, v5}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;I)V

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v2, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->setOnDataSetChangedListener(Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0a5e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f10002a

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllTxt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionbarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0566

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionbarTitle:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private selectAll()V
    .locals 8

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->toggle()V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v3}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    const-string/jumbo v3, "AnswerMemoOptionDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mListAdapter.getItemId(i) == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v5, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionbarTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v4}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string/jumbo v3, "AnswerMemoOptionDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCheckedIdArrayList == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->setDeleteButtonEnabled(Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListChange:Z

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v3}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->notifyDataSetChanged()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListChange:Z

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionbarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0566

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setDeleteButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOk:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOk:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private startMemoListQuery()V
    .locals 9

    const/16 v1, 0x65

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mBackgroundQueryHandler:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->cancelOperation(I)V

    :try_start_0
    const-string/jumbo v5, "memo_data like ?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, "%.AnswerMemo%"

    const/4 v1, 0x0

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mBackgroundQueryHandler:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;

    sget-object v3, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "memo_create_time DESC "

    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "exception  in startMemoListQuery "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTitleBar()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0a5e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionbarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0566

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionbarTitle:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v2, "onConfigurationChanged"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mLocale:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0d3e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->initView()V

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->startMemoListQuery()V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v3}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0d0a3b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onContentChanged(Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;)V
    .locals 2

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->startMemoListQuery()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0e0096

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v3, "Oncreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f04000b

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "ListType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListType:I

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f040009

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllCheck:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionbarTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$3;

    invoke-direct {v3, p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$3;-><init>(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->initView()V

    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v3, "Oncreate END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const v4, 0x7f10016a

    const/4 v3, 0x0

    const-string/jumbo v1, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const v1, 0x7f1002e5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f100121

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "AnswerMemoOptionDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onItemClick position "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f10002b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->toggle()V

    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v5, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v5}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v5

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->setDeleteButtonEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->updateTitleBar()V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->onBackPressed()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "onOptionsItemSelected R.id.delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->createDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100120 -> :sswitch_2
        0x7f10016a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v3, "onRestoreInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "CheckedList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    const-string/jumbo v2, "mOpThreadAlive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    :cond_0
    sget-object v2, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v4, "thread is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v4, "thread is interrupted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    sget-object v2, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v4, "thread is alive"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    :try_start_2
    const-string/jumbo v2, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v4, "thread is not alive"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    if-nez v2, :cond_1

    if-eqz v14, :cond_1

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_3
    const-string/jumbo v5, "memo_data like ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v2, "%.AnswerMemo%"

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "memo_create_time DESC "

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v15, 0x0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x0

    :goto_2
    if-nez v15, :cond_8

    const/16 v2, 0x64

    if-ge v11, v2, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v15, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v12, v13}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v15, 0x1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_6
    :goto_4
    throw v2

    :cond_7
    :try_start_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->deleteFromDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const v2, 0x7f0d0d35

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_5

    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_4
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->createDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "CheckedList"

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->mOpThread:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "Thread is ailve"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mOpThreadAlive"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string/jumbo v0, "AnswerMemoOptionDeleteActivity"

    const-string/jumbo v1, "Thread is not alive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mOpThreadAlive"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->startMemoListQuery()V

    return-void
.end method
