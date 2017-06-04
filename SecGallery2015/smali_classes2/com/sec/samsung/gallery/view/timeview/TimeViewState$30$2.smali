.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30$2;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30$2;->this$1:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30$2;->this$1:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1063"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
