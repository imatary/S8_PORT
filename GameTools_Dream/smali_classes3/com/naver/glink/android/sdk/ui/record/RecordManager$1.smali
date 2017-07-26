.class Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;
.super Ljava/lang/Object;
.source "RecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    return-void
.end method
