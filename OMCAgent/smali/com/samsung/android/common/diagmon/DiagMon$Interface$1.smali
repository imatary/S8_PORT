.class final Lcom/samsung/android/common/diagmon/DiagMon$Interface$1;
.super Ljava/lang/Object;
.source "DiagMon.java"

# interfaces
.implements Lcom/samsung/android/common/diagmon/DiagMon$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/diagmon/DiagMon$Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendReport(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public sendReport(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V
    .locals 0

    return-void
.end method

.method public sendReport(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendReport(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public sendReport(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
