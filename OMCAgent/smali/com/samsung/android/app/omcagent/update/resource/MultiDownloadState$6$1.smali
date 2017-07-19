.class Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6$1;
.super Ljava/lang/Object;
.source "MultiDownloadState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6;->run(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;)Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6$1;->this$0:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6$1;->val$context:Landroid/content/Context;

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
