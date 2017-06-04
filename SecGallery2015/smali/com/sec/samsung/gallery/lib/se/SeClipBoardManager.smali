.class public Lcom/sec/samsung/gallery/lib/se/SeClipBoardManager;
.super Ljava/lang/Object;
.source "SeClipBoardManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;


# instance fields
.field private mShowUIDialog:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowing(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "semclipboard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isShowing()Z

    move-result v1

    return v1
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeClipBoardManager;->mShowUIDialog:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-class v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    const-string/jumbo v2, "showDialog"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/lib/se/SeReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeClipBoardManager;->mShowUIDialog:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    const-string/jumbo v1, "semclipboard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeClipBoardManager;->mShowUIDialog:Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/lib/se/SeReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-class v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    const-string/jumbo v2, "showUIDataDialog"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/lib/se/SeReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeClipBoardManager;->mShowUIDialog:Ljava/lang/reflect/Method;

    goto :goto_0
.end method
