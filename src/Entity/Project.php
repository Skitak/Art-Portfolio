<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ProjectRepository")
 */
class Project
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Artwork")
     */
    private $frontArt;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $color;

    /**
     * @ORM\Column(type="integer")
     */
    private $displayOrder;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Artwork", mappedBy="project", orphanRemoval=true)
     * @ORM\OrderBy({"id" = "DESC"})
     */
    private $artworks;

    public function __construct($name = "Nouveau projet", $description = "description du projet", $color = "#FFF")
    {
        $this->artworks = new ArrayCollection();
        $this->name = $name;
        $this->description = $description;
        $this->displayOrder = 0;
        $this->color = $color;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getFrontArt()
    {
        return $this->frontArt;
    }

    public function setFrontArt(Artwork $art = null)
    {
        $this->frontArt = $art;

        return $this;
    }

    public function getColor(): ?string
    {
        return $this->color;
    }

    public function setColor(string $color): self
    {
        $this->color = $color;

        return $this;
    }

    public function getDisplayOrder(): ?int
    {
        if ($this->displayOrder == 0)
            return $this->id;
        return $this->displayOrder;
    }

    public function setDisplayOrder(int $displayOrder): self
    {
        $this->displayOrder = $displayOrder;

        return $this;
    }

    /**
     * @return Collection|Artwork[]
     */
    public function getArtworks(): Collection
    {
        return $this->artworks;
    }

    public function addArtwork(Artwork $artwork): self
    {
        if (!$this->artworks->contains($artwork)) {
            $this->artworks[] = $artwork;
            $artwork->setProject($this);
        }

        return $this;
    }

    public function removeArtwork(Artwork $artwork): self
    {
        if ($this->artworks->contains($artwork)) {
            $this->artworks->removeElement($artwork);
            // set the owning side to null (unless already changed)
            if ($artwork->getProject() === $this) {
                $artwork->setProject(null);
            }
        }

        return $this;
    }
}
