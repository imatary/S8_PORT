.class public Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;
.super Ljava/lang/Object;
.source "TaskPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/TaskPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OMC_STATE"
.end annotation


# static fields
.field public static final COMPOSING_PACKAGE:I = 0x50

.field public static final DOWNLOADING_PACKAGE:I = 0x32

.field public static final INIT:I = 0xa

.field public static final INSTALLING_PACKAGE_RESOURCE:I = 0x96

.field private static final KEY_STATE:Ljava/lang/String; = "OMC.State"

.field public static final NONE:I = 0x0

.field public static final READY_TO_INSTALL:I = 0x64

.field public static final REPORTING_RESULT:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "STATE_NONE"

    goto :goto_0

    :sswitch_1
    const-string v0, "STATE_INIT"

    goto :goto_0

    :sswitch_2
    const-string v0, "STATE_DOWNLOADING_PACKAGE"

    goto :goto_0

    :sswitch_3
    const-string v0, "STATE_COMPOSING_PACKAGE"

    goto :goto_0

    :sswitch_4
    const-string v0, "STATE_READY_TO_INSTALL"

    goto :goto_0

    :sswitch_5
    const-string v0, "STATE_INSTALLING_PACKAGE_RESOURCE"

    goto :goto_0

    :sswitch_6
    const-string v0, "STATE_REPORTING_RESULT"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x32 -> :sswitch_2
        0x50 -> :sswitch_3
        0x64 -> :sswitch_4
        0x96 -> :sswitch_5
        0xc8 -> :sswitch_6
    .end sparse-switch
.end method
