.class public Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$STATE;
.super Ljava/lang/Object;
.source "ResourceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STATE"
.end annotation


# static fields
.field public static final CANCELED:I = 0x200

.field public static final COMPLETED:I = 0xc8

.field public static final CONNECTING:I = 0x32

.field public static final COPY_FAIL:I = 0x191

.field public static final DOWNLOADED:I = 0xb4

.field public static final DOWNLOADING:I = 0x96

.field public static final DOWNLOAD_FAIL:I = 0x190

.field public static final INITIALIZE:I = 0xa

.field public static final NONE:I = 0x0

.field public static final NOT_FOUND:I = 0x194

.field public static final READY:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "default"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :sswitch_1
    const-string v0, "INITIALIZE"

    goto :goto_0

    :sswitch_2
    const-string v0, "CONNECTING"

    goto :goto_0

    :sswitch_3
    const-string v0, "READY"

    goto :goto_0

    :sswitch_4
    const-string v0, "DOWNLOADING"

    goto :goto_0

    :sswitch_5
    const-string v0, "DOWNLOADED"

    goto :goto_0

    :sswitch_6
    const-string v0, "COMPLETED"

    goto :goto_0

    :sswitch_7
    const-string v0, "DOWNLOAD_FAIL"

    goto :goto_0

    :sswitch_8
    const-string v0, "COPY_FAIL"

    goto :goto_0

    :sswitch_9
    const-string v0, "CANCELED"

    goto :goto_0

    :sswitch_a
    const-string v0, "NOT_FOUND"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x32 -> :sswitch_2
        0x64 -> :sswitch_3
        0x96 -> :sswitch_4
        0xb4 -> :sswitch_5
        0xc8 -> :sswitch_6
        0x190 -> :sswitch_7
        0x191 -> :sswitch_8
        0x194 -> :sswitch_a
        0x200 -> :sswitch_9
    .end sparse-switch
.end method
