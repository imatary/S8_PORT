.class public Lcom/samsung/android/app/omcagent/db/AppPref$UI_STATE;
.super Ljava/lang/Object;
.source "AppPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/AppPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UI_STATE"
.end annotation


# static fields
.field public static final ALREADY_REPORTED:I = 0xc9

.field public static final INSTALLING_CANCELABLE:I = 0x78

.field public static final INSTALLING_MANDATORY:I = 0x64

.field public static final INSTALL_CANCELABLE:I = 0x46

.field public static final INSTALL_FINISH:I = 0xc8

.field public static final INSTALL_MANDATORY:I = 0x32

.field private static final KEY:Ljava/lang/String; = "App.Ui.State"

.field public static final NONE:I = 0x0

.field public static final REPORT_RESULT:I = 0x190


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
    const-string v0, "APP_UI_STATE_NONE"

    goto :goto_0

    :sswitch_1
    const-string v0, "APP_UI_STATE_INSTALL_MANDATORY"

    goto :goto_0

    :sswitch_2
    const-string v0, "APP_UI_STATE_INSTALL_CANCELABLE"

    goto :goto_0

    :sswitch_3
    const-string v0, "APP_UI_STATE_INSTALLING_CANCELABLE"

    goto :goto_0

    :sswitch_4
    const-string v0, "APP_UI_STATE_INSTALLING_MANDATORY"

    goto :goto_0

    :sswitch_5
    const-string v0, "APP_UI_STATE_INSTALL_FINISH"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x46 -> :sswitch_2
        0x64 -> :sswitch_4
        0x78 -> :sswitch_3
        0xc8 -> :sswitch_5
    .end sparse-switch
.end method
