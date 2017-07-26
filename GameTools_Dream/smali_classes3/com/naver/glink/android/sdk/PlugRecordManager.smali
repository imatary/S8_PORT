.class public Lcom/naver/glink/android/sdk/PlugRecordManager;
.super Ljava/lang/Object;
.source "PlugRecordManager.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRecording()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/b;->c()Lcom/naver/glink/android/sdk/ui/record/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/record/a;->b()Z

    move-result v0

    return v0
.end method

.method public static setOnRecordManagerListener(Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;)V

    return-void
.end method

.method public static startRecord(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/PlugRecordManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->a(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/naver/glink/android/sdk/PlugRecordManager$1;

    invoke-direct {v1, v0, p0}, Lcom/naver/glink/android/sdk/PlugRecordManager$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;)V

    goto :goto_0
.end method

.method public static stopRecord()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->o()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/b;->c()Lcom/naver/glink/android/sdk/ui/record/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/record/a;->a()V

    goto :goto_0
.end method
