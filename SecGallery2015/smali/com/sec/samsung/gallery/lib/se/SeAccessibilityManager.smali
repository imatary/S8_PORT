.class public Lcom/sec/samsung/gallery/lib/se/SeAccessibilityManager;
.super Ljava/lang/Object;
.source "SeAccessibilityManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/AccessibilityManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assistantMenuUpdate(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v1, "accessibility"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    return-void
.end method
