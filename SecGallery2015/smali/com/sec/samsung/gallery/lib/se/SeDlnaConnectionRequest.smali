.class public Lcom/sec/samsung/gallery/lib/se/SeDlnaConnectionRequest;
.super Ljava/lang/Object;
.source "SeDlnaConnectionRequest.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/DlnaConnectionRequestInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SeDlnaConnectionRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public screenSharingConnectionRequest(Landroid/content/Context;ILcom/samsung/android/allshare/Device;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 11

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    new-instance v0, Landroid/hardware/display/SemDlnaDevice;

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object v2, p4

    move-object/from16 v3, p6

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v10, v0, p2}, Landroid/hardware/display/DisplayManager;->semSetActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V

    return-void

    :cond_0
    const-string/jumbo v2, "SeDlnaConnectionRequest"

    const-string/jumbo v3, " getIcon() is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
