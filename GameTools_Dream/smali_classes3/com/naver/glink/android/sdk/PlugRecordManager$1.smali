.class final Lcom/naver/glink/android/sdk/PlugRecordManager$1;
.super Ljava/lang/Object;
.source "PlugRecordManager.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/PlugRecordManager;->startRecord(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/b;->c()Lcom/naver/glink/android/sdk/ui/record/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/c;->a()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/record/a;->a(Landroid/app/Fragment;Lcom/naver/glink/android/sdk/ui/record/c;)V

    new-instance v1, Lcom/naver/glink/android/sdk/PlugRecordManager$1$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/PlugRecordManager$1$1;-><init>(Lcom/naver/glink/android/sdk/PlugRecordManager$1;)V

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/record/a;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;)V

    goto :goto_0
.end method
