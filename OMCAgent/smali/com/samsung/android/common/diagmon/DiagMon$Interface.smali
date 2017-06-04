.class public interface abstract Lcom/samsung/android/common/diagmon/DiagMon$Interface;
.super Ljava/lang/Object;
.source "DiagMon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/diagmon/DiagMon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Interface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/diagmon/DiagMon$Interface$Impl;
    }
.end annotation


# static fields
.field public static final Dummy:Lcom/samsung/android/common/diagmon/DiagMon$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/common/diagmon/DiagMon$Interface$1;

    invoke-direct {v0}, Lcom/samsung/android/common/diagmon/DiagMon$Interface$1;-><init>()V

    sput-object v0, Lcom/samsung/android/common/diagmon/DiagMon$Interface;->Dummy:Lcom/samsung/android/common/diagmon/DiagMon$Interface;

    return-void
.end method


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getServiceId()Ljava/lang/String;
.end method

.method public abstract sendReport(Landroid/os/Bundle;)V
.end method

.method public abstract sendReport(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V
.end method

.method public abstract sendReport(Ljava/lang/String;)V
.end method

.method public abstract sendReport(Ljava/lang/Throwable;)V
.end method

.method public abstract sendReport(ZLjava/lang/String;Ljava/lang/String;)V
.end method
