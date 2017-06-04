.class public Lcom/sec/samsung/gallery/lib/factory/DesktopModeManagerFactory;
.super Ljava/lang/Object;
.source "DesktopModeManagerFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
