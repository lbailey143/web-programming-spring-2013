SELECT 
    *
from
    fiberartists,
    fibergalleries,
    fiberartworks
WHERE
    fiberartists.idfiberartist = fibergalleries.fiberartistid_fibergalleryid
and fiberartworks.idfiberartwork_idfibergallery = fibergalleries.idfibergallery