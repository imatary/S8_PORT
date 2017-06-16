.class public Lcom/broadcom/bt/service/ProfileConfig$ProfileCfg;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ProfileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileCfg"
.end annotation


# instance fields
.field public mDefaultStarted:Z

.field public mDescription:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mRunInQuietMode:Z

.field public mSettingsActivityPkgClassName:Ljava/lang/String;

.field public mUserConfigurable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
