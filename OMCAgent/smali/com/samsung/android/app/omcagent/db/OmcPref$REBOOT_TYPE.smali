.class public Lcom/samsung/android/app/omcagent/db/OmcPref$REBOOT_TYPE;
.super Ljava/lang/Object;
.source "OmcPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/OmcPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REBOOT_TYPE"
.end annotation


# static fields
.field public static final FINISH_RECOVERY:I = 0x2

.field private static final KEY:Ljava/lang/String; = "OMC.REBOOT.MODE"

.field public static final NONE:I = -0x1

.field public static final REBOOT:I = 0x0

.field public static final RECOVERY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
