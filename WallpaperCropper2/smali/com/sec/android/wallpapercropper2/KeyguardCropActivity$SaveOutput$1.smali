.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput$1;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->regenerateInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->-get0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->-get0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
