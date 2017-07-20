.class Lcom/android/phone/answeringmemo/AnsweringMemoList$9;
.super Ljava/lang/Object;
.source "AnsweringMemoList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoList;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

.field final synthetic val$pos:I

.field final synthetic val$selectedItemPosition:J


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iput p2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;->val$pos:I

    iput-wide p3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;->val$selectedItemPosition:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9$1;

    iget-wide v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;->val$selectedItemPosition:J

    invoke-direct {v0, p0, v2, v3}, Lcom/android/phone/answeringmemo/AnsweringMemoList$9$1;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList$9;J)V

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$9$1;->start()V

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;->val$pos:I

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget v1, v1, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget v1, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isItemDeleted:Z

    :cond_0
    return-void
.end method
