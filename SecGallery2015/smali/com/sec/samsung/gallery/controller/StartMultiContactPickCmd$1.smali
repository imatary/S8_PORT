.class Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;
.super Ljava/lang/Object;
.source "StartMultiContactPickCmd.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;->execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf58f7c9a97c18f6L


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isExcludeMyProfile:Z

.field final synthetic val$mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field final synthetic val$max:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$max:I

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$isExcludeMyProfile:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_0
    const-string/jumbo v0, "StartMultiContactPckCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnContactSyncListener onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$max:I

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;->val$isExcludeMyProfile:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;->access$000(Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;Landroid/content/Context;IZ)V

    :cond_0
    const-string/jumbo v0, "StartMultiContactPckCmd"

    const-string/jumbo v1, "OnContactSyncListener onSuccess"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
