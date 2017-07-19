.class public Lcom/samsung/android/app/omcagent/db/OmcPref$WAIT_WIFI;
.super Ljava/lang/Object;
.source "OmcPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/OmcPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WAIT_WIFI"
.end annotation


# static fields
.field private static final INTEGER_KEY:Ljava/lang/String; = "OMC.WAIT.WIFI.INTEGER"

.field private static final KEY:Ljava/lang/String; = "OMC.WAIT.WIFI"

.field public static final NONE:I = 0x0

.field public static final NOTI:I = 0x1

.field public static final WAIT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
