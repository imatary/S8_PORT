.class Lcom/naver/glink/android/sdk/ui/main/c$1;
.super Ljava/lang/Object;
.source "TransparentViewHolder.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/main/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/main/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/c$1;->b:Lcom/naver/glink/android/sdk/ui/main/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/main/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    const/16 v0, 0xa

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c$1;->b:Lcom/naver/glink/android/sdk/ui/main/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/main/c;->a(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/content/Context;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
