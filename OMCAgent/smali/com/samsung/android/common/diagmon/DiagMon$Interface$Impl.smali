.class public Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;
.super Ljava/lang/Object;
.source "DiagMon.java"

# interfaces
.implements Lcom/samsung/android/common/diagmon/DiagMon$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/diagmon/DiagMon$Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private serviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->serviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public sendReport(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->sendReport(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V

    return-void
.end method

.method public sendReport(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->sendReport()V

    return-void
.end method

.method public sendReport(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->sendReport(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V

    return-void
.end method

.method public sendReport(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->sendReport(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V

    return-void
.end method

.method public sendReport(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->getServiceId()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;->sendReport(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V

    return-void
.end method
