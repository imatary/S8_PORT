.class public Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager$RESULT;
.super Ljava/lang/Object;
.source "SideloadingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RESULT"
.end annotation


# static fields
.field public static final COPY_PACKAGE_FAIL:I = 0x1fe

.field public static final INVALID_FILES:I = 0x1f9

.field public static final INVALID_OMC_INFO:I = 0x1f8

.field public static final INVALID_SIGNATURE:I = 0x1f6

.field public static final NOT_FOUND:I = 0x194

.field public static final PARTIALLY_SUCCESS:I = 0x1ff

.field public static final SUCCESS:I = 0xc8

.field public static final UNKNOWN_FAIL:I = 0x258

.field public static final UPDATE_PACKAGE_FAIL:I = 0x1fa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringID(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const v0, 0x7f0800be

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f0800ba

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0800bd

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0800bb

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0800bc

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0800b9

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0800bf

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x194 -> :sswitch_0
        0x1f6 -> :sswitch_1
        0x1f8 -> :sswitch_3
        0x1f9 -> :sswitch_2
        0x1fa -> :sswitch_5
        0x1fe -> :sswitch_4
    .end sparse-switch
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "OMC Package is not found"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method
