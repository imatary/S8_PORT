.class Lcom/naver/glink/android/sdk/ui/record/d$2;
.super Ljava/lang/Object;
.source "RecordSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/record/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/record/d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/record/d;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/d$2;->a:Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/d$2;->a:Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/d;->dismiss()V

    return-void
.end method
