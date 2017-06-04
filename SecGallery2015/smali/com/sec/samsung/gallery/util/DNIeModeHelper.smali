.class public Lcom/sec/samsung/gallery/util/DNIeModeHelper;
.super Ljava/lang/Object;
.source "DNIeModeHelper.java"


# static fields
.field private static final MDNIE_GALLERY_MODE:I = 0x6

.field private static final MDNIE_UI_MODE:I = 0x0

.field private static final MSCS_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final TAG:Ljava/lang/String; = "DNIeModeHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDNIeMode(Landroid/content/Context;ZI)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-static {p0, v0, p2}, Lcom/sec/samsung/gallery/util/DNIeModeHelper;->setDNIeMode(Landroid/content/Context;II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setDNIeMode(Landroid/content/Context;II)V
    .locals 4

    if-gez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "DNIeModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDnieMode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] with delay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;

    invoke-direct {v1, p1, p0}, Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;-><init>(ILandroid/content/Context;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
