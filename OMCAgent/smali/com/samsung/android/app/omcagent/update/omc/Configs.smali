.class public Lcom/samsung/android/app/omcagent/update/omc/Configs;
.super Ljava/lang/Object;
.source "Configs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/omc/Configs$InstallResultKey;,
        Lcom/samsung/android/app/omcagent/update/omc/Configs$DownloadResultKey;,
        Lcom/samsung/android/app/omcagent/update/omc/Configs$DownloadRequestValueType;,
        Lcom/samsung/android/app/omcagent/update/omc/Configs$DownloadRequestKey;
    }
.end annotation


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/update/omc/Configs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/Configs;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/Configs;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/Configs;->instance:Lcom/samsung/android/app/omcagent/update/omc/Configs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
