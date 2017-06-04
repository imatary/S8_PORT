.class public Lcom/samsung/android/common/diagmon/DiagMon;
.super Ljava/lang/Object;
.source "DiagMon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/diagmon/DiagMon$Interface;
    }
.end annotation


# static fields
.field public static instance:Lcom/samsung/android/common/diagmon/DiagMon$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/DiagMon$Interface;->Dummy:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    sput-object v0, Lcom/samsung/android/common/diagmon/DiagMon;->instance:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportIfFCOccurred()V
    .locals 1

    new-instance v0, Lcom/samsung/android/common/diagmon/ForceCloseReporter;

    invoke-direct {v0}, Lcom/samsung/android/common/diagmon/ForceCloseReporter;-><init>()V

    return-void
.end method

.method public static sendException(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/DiagMon;->instance:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface;->sendReport(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static sendReport(Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/DiagMon;->instance:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface;->sendReport(Landroid/os/Bundle;)V

    return-void
.end method

.method public static sendReport(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/DiagMon;->instance:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface;->sendReport(Ljava/lang/String;)V

    return-void
.end method

.method public static sendReport(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/DiagMon;->instance:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface;->sendReport(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static sendReport(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/DiagMon;->instance:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/common/diagmon/DiagMon$Interface;->sendReport(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/common/diagmon/DiagMon;->instance:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    return-void
.end method
