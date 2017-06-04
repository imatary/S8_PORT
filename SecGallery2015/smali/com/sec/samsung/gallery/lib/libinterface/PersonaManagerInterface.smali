.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/PersonaManagerInterface;
.super Ljava/lang/Object;
.source "PersonaManagerInterface.java"


# virtual methods
.method public abstract getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
.end method

.method public abstract getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSetAsWallpaperEnabledInKnoxMode(Landroid/content/Context;)Ljava/lang/Boolean;
.end method
