.class public Lcom/sec/samsung/gallery/lib/se/SeMdnieManager;
.super Ljava/lang/Object;
.source "SeMdnieManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MdnieManagerInterface;


# instance fields
.field private final mDnie:Lcom/samsung/android/hardware/display/SemMdnieManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "mDNIe"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMdnieManager;->mDnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-void
.end method


# virtual methods
.method public setContentMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMdnieManager;->mDnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    return-void
.end method
